.class public Lcom/metamoji/inputmethodservice/InputMethodService$InputMethodImpl;
.super Ljava/lang/Object;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/inputmethodservice/InputMethodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InputMethodImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/inputmethodservice/InputMethodService;


# direct methods
.method public constructor <init>(Lcom/metamoji/inputmethodservice/InputMethodService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/metamoji/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Lcom/metamoji/inputmethodservice/InputMethodService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public attachToken(Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public bindInput(Landroid/view/inputmethod/InputBinding;)V
    .locals 0

    .line 64
    iget-object p1, p0, Lcom/metamoji/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Lcom/metamoji/inputmethodservice/InputMethodService;

    invoke-virtual {p1}, Lcom/metamoji/inputmethodservice/InputMethodService;->initialize()V

    .line 65
    iget-object p1, p0, Lcom/metamoji/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Lcom/metamoji/inputmethodservice/InputMethodService;

    invoke-virtual {p1}, Lcom/metamoji/inputmethodservice/InputMethodService;->onBindInput()V

    return-void
.end method

.method public hideSoftInput(ILandroid/os/ResultReceiver;)V
    .locals 2

    .line 90
    iget-object p1, p0, Lcom/metamoji/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Lcom/metamoji/inputmethodservice/InputMethodService;

    invoke-virtual {p1}, Lcom/metamoji/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result p1

    .line 91
    iget-object v0, p0, Lcom/metamoji/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Lcom/metamoji/inputmethodservice/InputMethodService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/metamoji/inputmethodservice/InputMethodService;->-$$Nest$fput_showInputFlags(Lcom/metamoji/inputmethodservice/InputMethodService;I)V

    .line 92
    iget-object v0, p0, Lcom/metamoji/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Lcom/metamoji/inputmethodservice/InputMethodService;

    invoke-static {v0, v1}, Lcom/metamoji/inputmethodservice/InputMethodService;->-$$Nest$fput_showInputRequested(Lcom/metamoji/inputmethodservice/InputMethodService;Z)V

    .line 94
    iget-object v0, p0, Lcom/metamoji/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Lcom/metamoji/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Lcom/metamoji/inputmethodservice/InputMethodService;->hideWindow()V

    if-eqz p2, :cond_2

    .line 96
    iget-object v0, p0, Lcom/metamoji/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Lcom/metamoji/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Lcom/metamoji/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p2, v1, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public restartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/metamoji/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Lcom/metamoji/inputmethodservice/InputMethodService;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/metamoji/inputmethodservice/InputMethodService;->doStartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    return-void
.end method

.method public showSoftInput(ILandroid/os/ResultReceiver;)V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/metamoji/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Lcom/metamoji/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Lcom/metamoji/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v0

    .line 108
    iget-object v1, p0, Lcom/metamoji/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Lcom/metamoji/inputmethodservice/InputMethodService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/metamoji/inputmethodservice/InputMethodService;->-$$Nest$fput_showInputFlags(Lcom/metamoji/inputmethodservice/InputMethodService;I)V

    .line 109
    iget-object v1, p0, Lcom/metamoji/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Lcom/metamoji/inputmethodservice/InputMethodService;

    invoke-virtual {v1, p1, v2}, Lcom/metamoji/inputmethodservice/InputMethodService;->onShowInputRequested(IZ)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 110
    iget-object p1, p0, Lcom/metamoji/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Lcom/metamoji/inputmethodservice/InputMethodService;

    invoke-virtual {p1, v1}, Lcom/metamoji/inputmethodservice/InputMethodService;->showWindow(Z)V

    .line 113
    :cond_0
    iget-object p1, p0, Lcom/metamoji/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Lcom/metamoji/inputmethodservice/InputMethodService;

    invoke-virtual {p1}, Lcom/metamoji/inputmethodservice/InputMethodService;->onEvaluateInputViewShown()Z

    if-eqz p2, :cond_3

    .line 117
    iget-object p1, p0, Lcom/metamoji/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Lcom/metamoji/inputmethodservice/InputMethodService;

    invoke-virtual {p1}, Lcom/metamoji/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result p1

    if-eq v0, p1, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p2, v2, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_3
    return-void
.end method

.method public startInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/metamoji/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Lcom/metamoji/inputmethodservice/InputMethodService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/metamoji/inputmethodservice/InputMethodService;->doStartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    return-void
.end method

.method public unbindInput()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/metamoji/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Lcom/metamoji/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Lcom/metamoji/inputmethodservice/InputMethodService;->onUnbindInput()V

    .line 73
    iget-object v0, p0, Lcom/metamoji/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Lcom/metamoji/inputmethodservice/InputMethodService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/metamoji/inputmethodservice/InputMethodService;->-$$Nest$fput_inputStarted(Lcom/metamoji/inputmethodservice/InputMethodService;Z)V

    return-void
.end method
