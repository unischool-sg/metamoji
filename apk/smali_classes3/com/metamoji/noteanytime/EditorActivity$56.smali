.class Lcom/metamoji/noteanytime/EditorActivity$56;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/EditorActivity;->addPartsFromLibrary(Lcom/metamoji/cm/CmContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/EditorActivity;

.field final synthetic val$fm:Landroidx/fragment/app/FragmentManager;

.field final synthetic val$options:Lcom/metamoji/cm/CmContext;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/EditorActivity;Lcom/metamoji/cm/CmContext;Landroidx/fragment/app/FragmentManager;)V
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

    .line 5149
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$56;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    iput-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$56;->val$options:Lcom/metamoji/cm/CmContext;

    iput-object p3, p0, Lcom/metamoji/noteanytime/EditorActivity$56;->val$fm:Landroidx/fragment/app/FragmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 5153
    invoke-static {}, Lcom/metamoji/lb/LbLibraryItemManager;->getInstance()Lcom/metamoji/lb/LbLibraryItemManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/lb/LbLibraryItemManager;->loadPageDataArray()Ljava/util/List;

    move-result-object v0

    .line 5154
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/noteanytime/EditorActivity$56$1;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/noteanytime/EditorActivity$56$1;-><init>(Lcom/metamoji/noteanytime/EditorActivity$56;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
