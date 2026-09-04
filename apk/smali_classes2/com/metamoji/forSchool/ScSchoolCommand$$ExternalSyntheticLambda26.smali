.class public final synthetic Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda26;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda26;->f$1:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda26;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda26;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda26;->f$1:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda26;->f$2:Z

    invoke-static {v0, v1, v2}, Lcom/metamoji/forSchool/ScSchoolCommand;->lambda$handleSchoolUserListStartFeaturedPersonalModeByUserWithContext$13(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
