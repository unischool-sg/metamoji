.class Lcom/metamoji/ui/cabinet/ShareViewNormalGridView$1;
.super Ljava/lang/Object;
.source "ShareViewNormalGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/ShareViewNormalGridView;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/ShareViewNormalGridView;

.field final synthetic val$visibility:I

.field final synthetic val$w:I


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/ShareViewNormalGridView;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 29
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewNormalGridView$1;->this$0:Lcom/metamoji/ui/cabinet/ShareViewNormalGridView;

    iput p2, p0, Lcom/metamoji/ui/cabinet/ShareViewNormalGridView$1;->val$w:I

    iput p3, p0, Lcom/metamoji/ui/cabinet/ShareViewNormalGridView$1;->val$visibility:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 32
    iget v0, p0, Lcom/metamoji/ui/cabinet/ShareViewNormalGridView$1;->val$w:I

    sget v1, Lcom/metamoji/ui/cabinet/CabinetDef;->NORMAL_SELECTOR_WIDTH:I

    div-int/2addr v0, v1

    .line 33
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/ShareViewNormalGridView$1;->this$0:Lcom/metamoji/ui/cabinet/ShareViewNormalGridView;

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/cabinet/ShareViewNormalGridView;->setNumColumns(I)V

    .line 34
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewNormalGridView$1;->this$0:Lcom/metamoji/ui/cabinet/ShareViewNormalGridView;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/ShareViewNormalGridView;->requestLayout()V

    .line 35
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewNormalGridView$1;->this$0:Lcom/metamoji/ui/cabinet/ShareViewNormalGridView;

    iget v1, p0, Lcom/metamoji/ui/cabinet/ShareViewNormalGridView$1;->val$visibility:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/ShareViewNormalGridView;->setVisibility(I)V

    return-void
.end method
