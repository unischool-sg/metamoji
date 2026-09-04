.class Lcom/metamoji/un/text/UnTextEditUserLabelInfo$1;
.super Ljava/lang/Object;
.source "UnTextEditUserLabelInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/UnTextEditUserLabelInfo;->checkVisibleLayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/text/UnTextEditUserLabelInfo;

.field final synthetic val$visible:I


# direct methods
.method constructor <init>(Lcom/metamoji/un/text/UnTextEditUserLabelInfo;I)V
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

    .line 153
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextEditUserLabelInfo$1;->this$0:Lcom/metamoji/un/text/UnTextEditUserLabelInfo;

    iput p2, p0, Lcom/metamoji/un/text/UnTextEditUserLabelInfo$1;->val$visible:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextEditUserLabelInfo$1;->this$0:Lcom/metamoji/un/text/UnTextEditUserLabelInfo;

    invoke-static {v0}, Lcom/metamoji/un/text/UnTextEditUserLabelInfo;->-$$Nest$fget_popupLabel(Lcom/metamoji/un/text/UnTextEditUserLabelInfo;)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/metamoji/un/text/UnTextEditUserLabelInfo$1;->val$visible:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
