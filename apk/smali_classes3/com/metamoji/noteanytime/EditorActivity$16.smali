.class Lcom/metamoji/noteanytime/EditorActivity$16;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/EditorActivity;->showErrorAndBackToCabinet(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/EditorActivity;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/EditorActivity;Ljava/lang/String;Ljava/lang/String;)V
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

    .line 1634
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$16;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    iput-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$16;->val$msg:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/noteanytime/EditorActivity$16;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1637
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$16;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity$16;->val$msg:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/noteanytime/EditorActivity$16;->val$title:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/metamoji/noteanytime/EditorActivity;->-$$Nest$mshowErrorAndBackToCabinet(Lcom/metamoji/noteanytime/EditorActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
