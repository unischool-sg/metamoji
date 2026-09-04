.class Lcom/metamoji/nt/NtNoteController$68;
.super Ljava/lang/Object;
.source "NtNoteController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtNoteController;->handleCheckIfJoinClassNoteDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtNoteController;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtNoteController;Ljava/lang/String;)V
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

    .line 9868
    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController$68;->this$0:Lcom/metamoji/nt/NtNoteController;

    iput-object p2, p0, Lcom/metamoji/nt/NtNoteController$68;->val$userId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 9870
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$68;->this$0:Lcom/metamoji/nt/NtNoteController;

    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$68;->val$userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtNoteController;->showJoinClassNoteAlert(Ljava/lang/String;)V

    return-void
.end method
