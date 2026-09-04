.class Lcom/metamoji/un/text/UnTextUnit$5;
.super Ljava/lang/Object;
.source "UnTextUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/UnTextUnit;->destroyController(Lcom/metamoji/df/controller/ControllerContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/text/UnTextUnit;


# direct methods
.method constructor <init>(Lcom/metamoji/un/text/UnTextUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1906
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$5;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1908
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$5;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1910
    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit$5;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-static {v1}, Lcom/metamoji/un/text/UnTextUnit;->-$$Nest$fget_viewForSI(Lcom/metamoji/un/text/UnTextUnit;)Lcom/metamoji/un/text/UnTextUnit$ViewForSoftInput;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/metamoji/nt/INtEditor;->detachViewForSoftInput(Landroid/view/View;)V

    :cond_0
    return-void
.end method
