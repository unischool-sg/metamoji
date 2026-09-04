.class Lcom/metamoji/noteanytime/EditorActivity$6;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/EditorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/EditorActivity;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/EditorActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 775
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$6;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 778
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$6;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    iget-object v0, v0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    if-eqz v0, :cond_1

    .line 779
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->isNotePrepared()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 782
    :cond_0
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$6;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    iget-object v0, v0, Lcom/metamoji/noteanytime/EditorActivity;->_fxmanager:Lcom/metamoji/ui/flexible/FxManager;

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_ATTENTION_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->TOP:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/metamoji/ui/flexible/FxManager;->execFxUi(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)V

    :cond_1
    :goto_0
    return-void
.end method
