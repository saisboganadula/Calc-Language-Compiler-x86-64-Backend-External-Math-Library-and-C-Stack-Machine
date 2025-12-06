#include <stdio.h>
#include "calc3.h"
#include "y.tab.h"
static int lbl;
int ex(nodeType *p) {
    int lbl1, lbl2;
    if (!p) return 0;
    switch(p->type) {        
    case typeCon:       
        printf("\tpushq\t$%d\n", p->con.value); 
        break;         
    case typeId:        
        printf("\tpush\t%c\n", p->id.i + 'a'); 
        break;    
    case typeOpr:
        switch(p->opr.oper) {
        case WHILE:
            printf("L%03d:\n", lbl1 = lbl++);
            ex(p->opr.op[0]);
            lbl2 = lbl++;
            ex(p->opr.op[1]);
            printf("\tjmp\tL%03d\n", lbl1);
            printf("L%03d:\n", lbl2);
            break;     
        case IF:
            ex(p->opr.op[0]);
            if (p->opr.nops > 2) {
                /* if else */
                lbl1 = lbl++;
                ex(p->opr.op[1]);
                printf("\tjmp\tL%03d\n", lbl2 = lbl++);
                printf("L%03d:\n", lbl1);
                ex(p->opr.op[2]);
                printf("L%03d:\n", lbl2);
            } else {
                /* if */
                lbl1 = lbl++;
                ex(p->opr.op[1]);
                printf("L%03d:\n", lbl1);
            }
            break;     
        case PRINT:     
            ex(p->opr.op[0]);
            printf("\tpopq\t%%rsi\n");
            printf("\tpushq\t%%rax\n");
            printf("\tpushq\t%%rbx\n");
            printf("\tmovq\t$print,%%rdi\n");
            printf("\tmovq\t$0,%%rax\n");
            printf("\tcall\tprintf\n");
            printf("\tpopq\t%%rbx\n");
            printf("\tpopq\t%%rax\n");
            break;          
        case '=':       
            ex(p->opr.op[1]);
            printf("\tpopq\t%c\n", p->opr.op[0]->id.i + 'a');
            break;
        case UMINUS:    
            ex(p->opr.op[0]);
            printf("\tpopq\t%%rbx\n");
            printf("\tnegq\t%%rbx\n");
            printf("\tpushq\t%%rbx\n");
            break;      
	case FACT:
  	    ex(p->opr.op[0]);
            printf("\tpopq\t%%rax\n");
            printf("\tmovq\t$1, %%rbx\n");
            printf("L%03d:\n", lbl1 = lbl++);
            printf("\tcmpq\t$1, %%rax\n");
            printf("\tjle\tL%03d\n", lbl2 = lbl++);
            printf("\timulq\t%%rax, %%rbx\n");
            printf("\tdecq\t%%rax\n");
            printf("\tjmp\tL%03d\n", lbl1);
            printf("L%03d:\n", lbl2);
            printf("\tpushq\t%%rbx\n");
	    break;
	case LNTWO:
	    ex(p->opr.op[0]);
	    printf("\nlntwo\n");
	    break;      
        default:
            ex(p->opr.op[0]);
            ex(p->opr.op[1]);
            switch(p->opr.oper) {	        
            case GCD:   
            break;     
            case '+':   
            printf("\tpopq\t%%rbx\n");
            printf("\tpopq\t%%rcx\n");
            printf("\taddq\t%%rbx,%%rcx\n");
            printf("\tpushq\t%%rcx\n");
            break;         
            case '-':   
            printf("\tpopq\t%%rbx\n");
            printf("\tpopq\t%%rcx\n");
            printf("\tsubq\t%%rbx,%%rcx\n");
            printf("\tpushq\t%%rcx\n");
            break;          
            case '*':   
            printf("\tpopq\t%%rbx\n");
            printf("\tpopq\t%%rcx\n");
            printf("\timulq\t%%rbx,%%rcx\n");
            printf("\tpushq\t%%rcx\n");
            break;          
            case '/':
            printf("\tpopq\t%%r9\n");
            printf("\tpopq\t%%rax\n");
            printf("\txorq\t%%rdx,%%rdx\n");
            printf("\tidivq\t%%r9\n");
            printf("\tpushq\t%%rax\n");
            break;
            case '<':
            printf("\tpopq\t%%rcx\n");
            printf("\tpopq\t%%rbx\n");
            printf("\tcmpq\t%%rcx,%%rbx\n");
            printf("\tjge\tL%03d\n",lbl);
            break;           
            case '>':   
            printf("\tpopq\t%%rcx\n");
            printf("\tpopq\t%%rbx\n");
            printf("\tcmpq\t%%rcx,%%rbx\n");
            printf("\tjle\tL%03d\n",lbl);
            break;
            case GE:
            printf("\tpopq\t%%rcx\n");
            printf("\tpopq\t%%rbx\n");
            printf("\tcmpq\t%%rcx,%%rbx\n");
            printf("\tjl\tL%03d\n",lbl); 
            break;            
            case LE:
            printf("\tpopq\t%%rcx\n");
            printf("\tpopq\t%%rbx\n");
            printf("\tcmpq\t%%rcx,%%rbx\n");
            printf("\tjg\tL%03d\n",lbl); 
            break;
            case NE:    
            printf("\tpopq\t%%rcx\n");
            printf("\tpopq\t%%rbx\n");
            printf("\tcmpq\t%%rcx,%%rbx\n");
            printf("\tje\tL%03d\n",lbl); 
            break;            
            case EQ:
            printf("\tpopq\t%%rcx\n");
            printf("\tpopq\t%%rbx\n");
            printf("\tcmpq\t%%rcx,%%rbx\n");
            printf("\tjne\tL%03d\n",lbl); 
            break;
            }
        }
    }
    return 0;
}
