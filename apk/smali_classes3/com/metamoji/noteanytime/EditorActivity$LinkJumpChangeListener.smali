.class Lcom/metamoji/noteanytime/EditorActivity$LinkJumpChangeListener;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Lcom/metamoji/nt/NtLinkJumpManager$NtLinkJumpManagerChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/noteanytime/EditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LinkJumpChangeListener"
.end annotation


# instance fields
.field mOwner:Lcom/metamoji/noteanytime/EditorActivity;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/EditorActivity;)V
    .locals 0

    .line 3828
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3829
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$LinkJumpChangeListener;->mOwner:Lcom/metamoji/noteanytime/EditorActivity;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    .line 3843
    iput-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$LinkJumpChangeListener;->mOwner:Lcom/metamoji/noteanytime/EditorActivity;

    return-void
.end method

.method public sizeChanged()V
    .locals 2

    .line 3834
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/noteanytime/EditorActivity$LinkJumpChangeListener$1;

    invoke-direct {v1, p0}, Lcom/metamoji/noteanytime/EditorActivity$LinkJumpChangeListener$1;-><init>(Lcom/metamoji/noteanytime/EditorActivity$LinkJumpChangeListener;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    return-void
.end method
