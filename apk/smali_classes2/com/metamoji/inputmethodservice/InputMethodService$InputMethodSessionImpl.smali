.class public Lcom/metamoji/inputmethodservice/InputMethodService$InputMethodSessionImpl;
.super Ljava/lang/Object;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/inputmethodservice/InputMethodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InputMethodSessionImpl"
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

    .line 134
    iput-object p1, p0, Lcom/metamoji/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Lcom/metamoji/inputmethodservice/InputMethodService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/metamoji/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Lcom/metamoji/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/inputmethodservice/InputMethodService;->onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public finishInput()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/metamoji/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Lcom/metamoji/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Lcom/metamoji/inputmethodservice/InputMethodService;->doFinishInput()V

    return-void
.end method

.method public toggleSoftInput(II)V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/metamoji/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Lcom/metamoji/inputmethodservice/InputMethodService;

    invoke-static {v0, p1, p2}, Lcom/metamoji/inputmethodservice/InputMethodService;->-$$Nest$monToggleSoftInput(Lcom/metamoji/inputmethodservice/InputMethodService;II)V

    return-void
.end method
