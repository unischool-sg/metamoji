.class Lcom/metamoji/nt/NtNoteController$12;
.super Ljava/lang/Object;
.source "NtNoteController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtNoteController;->leaveTextToolMode(ZZZLcom/metamoji/nt/NtDocument$ToolMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtNoteController;

.field final synthetic val$focusUnit:Lcom/metamoji/nt/NtUnitController;

.field final synthetic val$selectTextUnit:Lcom/metamoji/nt/NtUnitController;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/nt/NtUnitController;)V
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

    .line 3098
    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController$12;->this$0:Lcom/metamoji/nt/NtNoteController;

    iput-object p2, p0, Lcom/metamoji/nt/NtNoteController$12;->val$focusUnit:Lcom/metamoji/nt/NtUnitController;

    iput-object p3, p0, Lcom/metamoji/nt/NtNoteController$12;->val$selectTextUnit:Lcom/metamoji/nt/NtUnitController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 3101
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtNoteController$12$1;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtNoteController$12$1;-><init>(Lcom/metamoji/nt/NtNoteController$12;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;J)Z

    return-void
.end method
