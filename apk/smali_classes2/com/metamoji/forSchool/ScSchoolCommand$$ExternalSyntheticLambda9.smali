.class public final synthetic Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/nt/NtNoteController;

.field public final synthetic f$1:Lcom/metamoji/nt/NtPageController;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtPageController;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda9;->f$0:Lcom/metamoji/nt/NtNoteController;

    iput-object p2, p0, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda9;->f$1:Lcom/metamoji/nt/NtPageController;

    iput-object p3, p0, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda9;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda9;->f$0:Lcom/metamoji/nt/NtNoteController;

    iget-object v1, p0, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda9;->f$1:Lcom/metamoji/nt/NtPageController;

    iget-object v2, p0, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda9;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/metamoji/forSchool/ScSchoolCommand;->lambda$handleSchoolNewPageFromPersonalLayer$10(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtPageController;Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method
