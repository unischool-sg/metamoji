.class Lcom/metamoji/noteanytime/EditorActivity$45;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/EditorActivity;->addMainView(Lcom/metamoji/df/controller/DfNoteController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/EditorActivity;

.field final synthetic val$rootController:Lcom/metamoji/df/controller/DfNoteController;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/EditorActivity;Lcom/metamoji/df/controller/DfNoteController;)V
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

    .line 3719
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$45;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    iput-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$45;->val$rootController:Lcom/metamoji/df/controller/DfNoteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 3722
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$45;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity$45;->val$rootController:Lcom/metamoji/df/controller/DfNoteController;

    check-cast v1, Lcom/metamoji/nt/NtNoteController;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/noteanytime/EditorActivity;->bindUIToDocument(Lcom/metamoji/nt/NtNoteController;Landroid/os/Bundle;)V

    return-void
.end method
