.class Lcom/metamoji/forSchool/ScSchoolCommand$3$1;
.super Ljava/lang/Object;
.source "ScSchoolCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ScSchoolCommand$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/ScSchoolCommand$3;

.field final synthetic val$noteController:Lcom/metamoji/nt/NtNoteController;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/ScSchoolCommand$3;Lcom/metamoji/nt/NtNoteController;)V
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

    .line 1408
    iput-object p1, p0, Lcom/metamoji/forSchool/ScSchoolCommand$3$1;->this$0:Lcom/metamoji/forSchool/ScSchoolCommand$3;

    iput-object p2, p0, Lcom/metamoji/forSchool/ScSchoolCommand$3$1;->val$noteController:Lcom/metamoji/nt/NtNoteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1411
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolCommand$3$1;->val$noteController:Lcom/metamoji/nt/NtNoteController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/metamoji/nt/NtNoteController;->setAllowEveryoneAnswer(ZZ)V

    return-void
.end method
