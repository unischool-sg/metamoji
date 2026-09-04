.class Lcom/metamoji/nt/NtNoteController$UserDrawingEndHandler;
.super Ljava/lang/Object;
.source "NtNoteController.java"

# interfaces
.implements Lcom/metamoji/cm/ICmEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtNoteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserDrawingEndHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/metamoji/cm/ICmEventHandler<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtNoteController;


# direct methods
.method private constructor <init>(Lcom/metamoji/nt/NtNoteController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 9447
    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController$UserDrawingEndHandler;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtNoteController-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtNoteController$UserDrawingEndHandler;-><init>(Lcom/metamoji/nt/NtNoteController;)V

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

    .line 9447
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtNoteController$UserDrawingEndHandler;->invoke(Ljava/lang/Void;)V

    return-void
.end method

.method public invoke(Ljava/lang/Void;)V
    .locals 0

    .line 9451
    iget-object p1, p0, Lcom/metamoji/nt/NtNoteController$UserDrawingEndHandler;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->onUserDrawingEnd()V

    return-void
.end method
