.class Lcom/metamoji/tle/InputViewForTLE$1;
.super Ljava/lang/Object;
.source "InputViewForTLE.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/tle/InputViewForTLE;->initRecognizeText()Z
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

    .line 88
    iput-object p1, p0, Lcom/metamoji/tle/InputViewForTLE$1;->this$0:Lcom/metamoji/tle/InputViewForTLE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 91
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->isUseMazec()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    new-instance v0, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v0}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    .line 93
    const-string v1, ""

    iput-object v1, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 94
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->getInstance()Lcom/metamoji/nt/NtMazecImsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/tle/InputViewForTLE$1;->this$0:Lcom/metamoji/tle/InputViewForTLE;

    invoke-virtual {v2, v0}, Lcom/metamoji/tle/InputViewForTLE;->createInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/metamoji/nt/NtMazecImsManager;->startInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    .line 95
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->getInstance()Lcom/metamoji/nt/NtMazecImsManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtMazecImsManager;->showSoftInput(ILandroid/os/ResultReceiver;)V

    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/metamoji/tle/InputViewForTLE$1;->this$0:Lcom/metamoji/tle/InputViewForTLE;

    invoke-virtual {v0}, Lcom/metamoji/tle/InputViewForTLE;->requestFocus()Z

    return-void
.end method
