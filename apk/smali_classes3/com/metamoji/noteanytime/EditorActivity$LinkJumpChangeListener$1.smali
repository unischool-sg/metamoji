.class Lcom/metamoji/noteanytime/EditorActivity$LinkJumpChangeListener$1;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/EditorActivity$LinkJumpChangeListener;->sizeChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/EditorActivity$LinkJumpChangeListener;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/EditorActivity$LinkJumpChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 3834
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$LinkJumpChangeListener$1;->this$0:Lcom/metamoji/noteanytime/EditorActivity$LinkJumpChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 3837
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$LinkJumpChangeListener$1;->this$0:Lcom/metamoji/noteanytime/EditorActivity$LinkJumpChangeListener;

    iget-object v0, v0, Lcom/metamoji/noteanytime/EditorActivity$LinkJumpChangeListener;->mOwner:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->updateJumpLabel()V

    return-void
.end method
