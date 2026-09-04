.class Lcom/metamoji/un/text/UnTextUnit$44;
.super Ljava/lang/Object;
.source "UnTextUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/UnTextUnit;->focusToViewForSoftInputAndShowSoftInput(Z)V
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

    .line 10915
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$44;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 10918
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$44;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getViewForSoftInput()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10920
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtEditorWindowController;->showSoftInput(Landroid/view/View;)Z

    :cond_0
    return-void
.end method
