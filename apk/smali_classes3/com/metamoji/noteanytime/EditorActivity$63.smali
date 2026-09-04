.class Lcom/metamoji/noteanytime/EditorActivity$63;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/EditorActivity;->showHideButtonOnUIThread(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/EditorActivity;

.field final synthetic val$id:I

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/EditorActivity;IZ)V
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

    .line 5745
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$63;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    iput p2, p0, Lcom/metamoji/noteanytime/EditorActivity$63;->val$id:I

    iput-boolean p3, p0, Lcom/metamoji/noteanytime/EditorActivity$63;->val$show:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 5748
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$63;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    iget v1, p0, Lcom/metamoji/noteanytime/EditorActivity$63;->val$id:I

    iget-boolean v2, p0, Lcom/metamoji/noteanytime/EditorActivity$63;->val$show:Z

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/noteanytime/EditorActivity;->showHideButton(IZ)V

    return-void
.end method
