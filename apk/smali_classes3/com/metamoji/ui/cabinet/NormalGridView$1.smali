.class Lcom/metamoji/ui/cabinet/NormalGridView$1;
.super Ljava/lang/Object;
.source "NormalGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/NormalGridView;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/NormalGridView;

.field final synthetic val$w:I


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/NormalGridView;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NormalGridView$1;->this$0:Lcom/metamoji/ui/cabinet/NormalGridView;

    iput p2, p0, Lcom/metamoji/ui/cabinet/NormalGridView$1;->val$w:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 37
    iget v0, p0, Lcom/metamoji/ui/cabinet/NormalGridView$1;->val$w:I

    sget v1, Lcom/metamoji/ui/cabinet/CabinetDef;->NORMAL_SELECTOR_WIDTH:I

    div-int/2addr v0, v1

    .line 38
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NormalGridView$1;->this$0:Lcom/metamoji/ui/cabinet/NormalGridView;

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/cabinet/NormalGridView;->setNumColumns(I)V

    .line 39
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NormalGridView$1;->this$0:Lcom/metamoji/ui/cabinet/NormalGridView;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/NormalGridView;->requestLayout()V

    .line 40
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NormalGridView$1;->this$0:Lcom/metamoji/ui/cabinet/NormalGridView;

    iget v1, v0, Lcom/metamoji/ui/cabinet/NormalGridView;->m_visibility:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/NormalGridView;->setVisibility(I)V

    return-void
.end method
