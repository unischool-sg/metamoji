.class Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit$1$1;
.super Ljava/lang/Object;
.source "ScCollaboBgTaskForReflectOfflineEdit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit$1;->call()Lcom/metamoji/df/controller/ControllerContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit$1;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 154
    iput-object p1, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit$1$1;->this$1:Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit$1$1;->this$1:Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit$1;

    iget-object v0, v0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit$1;->val$pageController:Lcom/metamoji/nt/NtPageController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtPageController;->makeLayersForSchool(Z)V

    return-void
.end method
