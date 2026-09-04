.class Lcom/metamoji/noteanytime/EditorActivity$61;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/EditorActivity;->notifyEnableCommand(Lcom/metamoji/nt/NtCommand;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/EditorActivity;

.field final synthetic val$command:Lcom/metamoji/nt/NtCommand;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/EditorActivity;Lcom/metamoji/nt/NtCommand;Z)V
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

    .line 5693
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$61;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    iput-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$61;->val$command:Lcom/metamoji/nt/NtCommand;

    iput-boolean p3, p0, Lcom/metamoji/noteanytime/EditorActivity$61;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 5696
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$61;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    iget-object v0, v0, Lcom/metamoji/noteanytime/EditorActivity;->_fxmanager:Lcom/metamoji/ui/flexible/FxManager;

    if-eqz v0, :cond_0

    .line 5697
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$61;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    iget-object v0, v0, Lcom/metamoji/noteanytime/EditorActivity;->_fxmanager:Lcom/metamoji/ui/flexible/FxManager;

    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity$61;->val$command:Lcom/metamoji/nt/NtCommand;

    iget-boolean v2, p0, Lcom/metamoji/noteanytime/EditorActivity$61;->val$enabled:Z

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/ui/flexible/FxManager;->notifyEnableCommand(Lcom/metamoji/nt/NtCommand;Z)V

    .line 5699
    :cond_0
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$61;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    iget-object v0, v0, Lcom/metamoji/noteanytime/EditorActivity;->_hover:Lcom/metamoji/ui/CustomHoverSelectorView;

    if-eqz v0, :cond_1

    .line 5700
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$61;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    iget-object v0, v0, Lcom/metamoji/noteanytime/EditorActivity;->_hover:Lcom/metamoji/ui/CustomHoverSelectorView;

    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity$61;->val$command:Lcom/metamoji/nt/NtCommand;

    iget-boolean v2, p0, Lcom/metamoji/noteanytime/EditorActivity$61;->val$enabled:Z

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/ui/CustomHoverSelectorView;->notifyEnableCommand(Lcom/metamoji/nt/NtCommand;Z)V

    :cond_1
    return-void
.end method
