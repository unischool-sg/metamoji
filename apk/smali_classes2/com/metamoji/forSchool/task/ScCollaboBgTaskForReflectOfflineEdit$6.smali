.class Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit$6;
.super Ljava/lang/Object;
.source "ScCollaboBgTaskForReflectOfflineEdit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;->processOneRestoredPageReflectOfflineEdit(Lcom/metamoji/nt/NtPageController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;

.field final synthetic val$layerId:Ljava/lang/String;

.field final synthetic val$pageController:Lcom/metamoji/nt/NtPageController;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;Lcom/metamoji/nt/NtPageController;Ljava/lang/String;)V
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

    .line 380
    iput-object p1, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit$6;->this$0:Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;

    iput-object p2, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit$6;->val$pageController:Lcom/metamoji/nt/NtPageController;

    iput-object p3, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit$6;->val$layerId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 383
    iget-object v0, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit$6;->val$pageController:Lcom/metamoji/nt/NtPageController;

    iget-object v1, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit$6;->val$layerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtPageController;->makeCurrentLayerToPersonal(Ljava/lang/String;)V

    return-void
.end method
