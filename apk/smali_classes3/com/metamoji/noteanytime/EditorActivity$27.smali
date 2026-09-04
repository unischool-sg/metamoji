.class Lcom/metamoji/noteanytime/EditorActivity$27;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/EditorActivity;->initControls(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/EditorActivity;

.field final synthetic val$jumpListChangeTab:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/EditorActivity;Landroid/view/View;)V
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

    .line 2529
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$27;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    iput-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$27;->val$jumpListChangeTab:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 2533
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$27;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    iget-object p1, p1, Lcom/metamoji/noteanytime/EditorActivity;->_fxmanager:Lcom/metamoji/ui/flexible/FxManager;

    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PAGE_LIST_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity$27;->val$jumpListChangeTab:Landroid/view/View;

    const/4 v2, 0x0

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->BOTTOM:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/metamoji/ui/flexible/FxManager;->execFxUi(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)V

    return-void
.end method
