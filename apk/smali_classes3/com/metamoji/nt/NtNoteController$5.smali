.class Lcom/metamoji/nt/NtNoteController$5;
.super Ljava/lang/Object;
.source "NtNoteController.java"

# interfaces
.implements Lcom/metamoji/cm/ICmEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtNoteController;->init(Lcom/metamoji/df/controller/ControllerContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/metamoji/cm/ICmEventHandler<",
        "[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtNoteController;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtNoteController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1191
    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController$5;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1191
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtNoteController$5;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public invoke([Ljava/lang/Object;)V
    .locals 1

    .line 1194
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$5;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-static {v0, p1}, Lcom/metamoji/nt/NtNoteController;->-$$Nest$monWillChangeFocusUnit(Lcom/metamoji/nt/NtNoteController;[Ljava/lang/Object;)V

    return-void
.end method
