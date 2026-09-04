.class Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView$2;
.super Ljava/lang/Object;
.source "ScOfflineEditModeInfoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;->handleLabelTapped()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;

.field final synthetic val$offlineEditManager:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;)V
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

    .line 151
    iput-object p1, p0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView$2;->this$0:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;

    iput-object p2, p0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView$2;->val$offlineEditManager:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView$2;->val$offlineEditManager:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->startOfflineEditMode()V

    return-void
.end method
