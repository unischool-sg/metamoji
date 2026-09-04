.class Lcom/metamoji/nt/NtNoteController$13;
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

    .line 3110
    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController$13;->this$0:Lcom/metamoji/nt/NtNoteController;

    iput-object p2, p0, Lcom/metamoji/nt/NtNoteController$13;->val$focusUnit:Lcom/metamoji/nt/NtUnitController;

    iput-object p3, p0, Lcom/metamoji/nt/NtNoteController$13;->val$selectTextUnit:Lcom/metamoji/nt/NtUnitController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 3113
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$13;->val$focusUnit:Lcom/metamoji/nt/NtUnitController;

    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$13;->val$selectTextUnit:Lcom/metamoji/nt/NtUnitController;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtUnitController;->selectUnit(Lcom/metamoji/nt/NtUnitController;)V

    return-void
.end method
