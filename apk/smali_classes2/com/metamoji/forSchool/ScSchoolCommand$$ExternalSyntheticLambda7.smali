.class public final synthetic Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/nt/NtEditorWindowController;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/metamoji/nt/cabinet/cabinetWaitView;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/nt/NtEditorWindowController;Ljava/lang/String;Lcom/metamoji/nt/cabinet/cabinetWaitView;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda7;->f$0:Lcom/metamoji/nt/NtEditorWindowController;

    iput-object p2, p0, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda7;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda7;->f$2:Lcom/metamoji/nt/cabinet/cabinetWaitView;

    iput-object p4, p0, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda7;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda7;->f$0:Lcom/metamoji/nt/NtEditorWindowController;

    iget-object v1, p0, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda7;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda7;->f$2:Lcom/metamoji/nt/cabinet/cabinetWaitView;

    iget-object v3, p0, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda7;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/metamoji/forSchool/ScSchoolCommand;->lambda$handleSchoolUserListStartFeaturedPersonalModeByUser$14(Lcom/metamoji/nt/NtEditorWindowController;Ljava/lang/String;Lcom/metamoji/nt/cabinet/cabinetWaitView;Ljava/lang/String;)V

    return-void
.end method
