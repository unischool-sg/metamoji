.class Lcom/metamoji/forSchool/ScSchoolCommand$1;
.super Ljava/lang/Object;
.source "ScSchoolCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ScSchoolCommand;->handleSchoolUserListStartFeaturedPersonalModeByUser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$dcUserId:Ljava/lang/String;

.field final synthetic val$isTeacherPersonalLayer:Z

.field final synthetic val$noteController:Lcom/metamoji/nt/NtNoteController;

.field final synthetic val$page:Lcom/metamoji/nt/NtPageController;

.field final synthetic val$userName:Ljava/lang/String;

.field final synthetic val$wait:Lcom/metamoji/nt/cabinet/cabinetWaitView;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/cabinet/cabinetWaitView;Lcom/metamoji/nt/NtPageController;Lcom/metamoji/nt/NtNoteController;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 889
    iput-object p1, p0, Lcom/metamoji/forSchool/ScSchoolCommand$1;->val$wait:Lcom/metamoji/nt/cabinet/cabinetWaitView;

    iput-object p2, p0, Lcom/metamoji/forSchool/ScSchoolCommand$1;->val$page:Lcom/metamoji/nt/NtPageController;

    iput-object p3, p0, Lcom/metamoji/forSchool/ScSchoolCommand$1;->val$noteController:Lcom/metamoji/nt/NtNoteController;

    iput-object p4, p0, Lcom/metamoji/forSchool/ScSchoolCommand$1;->val$dcUserId:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/metamoji/forSchool/ScSchoolCommand$1;->val$isTeacherPersonalLayer:Z

    iput-object p6, p0, Lcom/metamoji/forSchool/ScSchoolCommand$1;->val$userName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 892
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolCommand$1;->val$wait:Lcom/metamoji/nt/cabinet/cabinetWaitView;

    invoke-virtual {v0}, Lcom/metamoji/nt/cabinet/cabinetWaitView;->hide()V

    .line 894
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolCommand$1;->val$page:Lcom/metamoji/nt/NtPageController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 895
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolCommand$1;->val$noteController:Lcom/metamoji/nt/NtNoteController;

    iget-object v1, p0, Lcom/metamoji/forSchool/ScSchoolCommand$1;->val$dcUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtNoteController;->getBelongGroupDic(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 896
    const-string v1, "group-id"

    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 897
    const-string v2, "group-name"

    invoke-static {v0, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 899
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v2

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/metamoji/forSchool/ScSchoolCommand$1;->val$isTeacherPersonalLayer:Z

    invoke-virtual {v2, v3, v1, v0, v4}, Lcom/metamoji/forSchool/ScSchoolManager;->startFeaturedPersonalMode(ZLjava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 902
    :cond_0
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/forSchool/ScSchoolCommand$1;->val$dcUserId:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/forSchool/ScSchoolCommand$1;->val$userName:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/metamoji/forSchool/ScSchoolCommand$1;->val$isTeacherPersonalLayer:Z

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/metamoji/forSchool/ScSchoolManager;->startFeaturedPersonalMode(ZLjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
