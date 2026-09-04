.class Lcom/metamoji/tle/InputViewForTLE$3;
.super Ljava/lang/Object;
.source "InputViewForTLE.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/tle/InputViewForTLE;->uninitRecognizeText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/tle/InputViewForTLE;


# direct methods
.method constructor <init>(Lcom/metamoji/tle/InputViewForTLE;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 128
    iput-object p1, p0, Lcom/metamoji/tle/InputViewForTLE$3;->this$0:Lcom/metamoji/tle/InputViewForTLE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 131
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->isUseMazec()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 132
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->getInstance()Lcom/metamoji/nt/NtMazecImsManager;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/nt/NtMazecImsManager;->hideSoftInput(ILandroid/os/ResultReceiver;)V

    goto :goto_0

    .line 135
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 137
    const-string v3, "input_method"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    .line 139
    iget-object v3, p0, Lcom/metamoji/tle/InputViewForTLE$3;->this$0:Lcom/metamoji/tle/InputViewForTLE;

    invoke-virtual {v3}, Lcom/metamoji/tle/InputViewForTLE;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    .line 144
    :cond_1
    :goto_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method
