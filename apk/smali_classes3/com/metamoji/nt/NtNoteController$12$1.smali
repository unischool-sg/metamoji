.class Lcom/metamoji/nt/NtNoteController$12$1;
.super Ljava/lang/Object;
.source "NtNoteController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtNoteController$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/nt/NtNoteController$12;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtNoteController$12;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 3101
    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController$12$1;->this$1:Lcom/metamoji/nt/NtNoteController$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 3104
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$12$1;->this$1:Lcom/metamoji/nt/NtNoteController$12;

    iget-object v0, v0, Lcom/metamoji/nt/NtNoteController$12;->val$focusUnit:Lcom/metamoji/nt/NtUnitController;

    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$12$1;->this$1:Lcom/metamoji/nt/NtNoteController$12;

    iget-object v1, v1, Lcom/metamoji/nt/NtNoteController$12;->val$selectTextUnit:Lcom/metamoji/nt/NtUnitController;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtUnitController;->selectUnit(Lcom/metamoji/nt/NtUnitController;)V

    return-void
.end method
