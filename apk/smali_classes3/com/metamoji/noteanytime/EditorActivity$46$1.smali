.class Lcom/metamoji/noteanytime/EditorActivity$46$1;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/EditorActivity$46;->invoke(Lcom/metamoji/df/controller/PageEventContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/noteanytime/EditorActivity$46;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/EditorActivity$46;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 3778
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$46$1;->this$1:Lcom/metamoji/noteanytime/EditorActivity$46;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 3781
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$46$1;->this$1:Lcom/metamoji/noteanytime/EditorActivity$46;

    iget-object v0, v0, Lcom/metamoji/noteanytime/EditorActivity$46;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->updatePageLabel()V

    return-void
.end method
