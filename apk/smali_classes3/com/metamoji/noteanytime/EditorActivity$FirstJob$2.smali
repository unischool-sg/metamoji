.class Lcom/metamoji/noteanytime/EditorActivity$FirstJob$2;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/EditorActivity$FirstJob;->addOrExecute(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/EditorActivity$FirstJob;

.field final synthetic val$command:Lcom/metamoji/nt/NtCommand;

.field final synthetic val$context:Lcom/metamoji/cm/CmContext;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/EditorActivity$FirstJob;Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V
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

    .line 8173
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$FirstJob$2;->this$0:Lcom/metamoji/noteanytime/EditorActivity$FirstJob;

    iput-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$FirstJob$2;->val$command:Lcom/metamoji/nt/NtCommand;

    iput-object p3, p0, Lcom/metamoji/noteanytime/EditorActivity$FirstJob$2;->val$context:Lcom/metamoji/cm/CmContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 8176
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$FirstJob$2;->this$0:Lcom/metamoji/noteanytime/EditorActivity$FirstJob;

    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity$FirstJob$2;->val$command:Lcom/metamoji/nt/NtCommand;

    iget-object v2, p0, Lcom/metamoji/noteanytime/EditorActivity$FirstJob$2;->val$context:Lcom/metamoji/cm/CmContext;

    invoke-static {v0, v1, v2}, Lcom/metamoji/noteanytime/EditorActivity$FirstJob;->-$$Nest$mexec(Lcom/metamoji/noteanytime/EditorActivity$FirstJob;Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void
.end method
