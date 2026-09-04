.class Lcom/metamoji/ns/ui/NsCollaboModeBar$48;
.super Ljava/lang/Object;
.source "NsCollaboModeBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/ui/NsCollaboModeBar;->updateSchoolStatusBtn(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/ui/NsCollaboModeBar;

.field final synthetic val$doItBtnImageForBar:I

.field final synthetic val$doItBtnSelected:Z

.field final synthetic val$helpBtnImageForBar:I

.field final synthetic val$helpBtnSelected:Z


# direct methods
.method constructor <init>(Lcom/metamoji/ns/ui/NsCollaboModeBar;ZZII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2120
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar$48;->this$0:Lcom/metamoji/ns/ui/NsCollaboModeBar;

    iput-boolean p2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar$48;->val$doItBtnSelected:Z

    iput-boolean p3, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar$48;->val$helpBtnSelected:Z

    iput p4, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar$48;->val$doItBtnImageForBar:I

    iput p5, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar$48;->val$helpBtnImageForBar:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2123
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar$48;->this$0:Lcom/metamoji/ns/ui/NsCollaboModeBar;

    iget-object v0, v0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolStatusDoItBtn:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar$48;->val$doItBtnSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2124
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar$48;->this$0:Lcom/metamoji/ns/ui/NsCollaboModeBar;

    iget-object v0, v0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_schoolStatusHelpBtn:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar$48;->val$helpBtnSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2125
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar$48;->this$0:Lcom/metamoji/ns/ui/NsCollaboModeBar;

    iget-object v0, v0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolStatusDoItBtn:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar$48;->val$doItBtnSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 2126
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar$48;->this$0:Lcom/metamoji/ns/ui/NsCollaboModeBar;

    iget-object v0, v0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolStatusHelpBtn:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar$48;->val$helpBtnSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 2127
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar$48;->this$0:Lcom/metamoji/ns/ui/NsCollaboModeBar;

    iget-object v0, v0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolStatusDoItBtn:Landroid/widget/ImageView;

    iget v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar$48;->val$doItBtnImageForBar:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2128
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar$48;->this$0:Lcom/metamoji/ns/ui/NsCollaboModeBar;

    iget-object v0, v0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subSchoolStatusHelpBtn:Landroid/widget/ImageView;

    iget v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar$48;->val$helpBtnImageForBar:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
