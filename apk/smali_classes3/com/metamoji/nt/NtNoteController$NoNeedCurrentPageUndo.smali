.class Lcom/metamoji/nt/NtNoteController$NoNeedCurrentPageUndo;
.super Ljava/lang/Object;
.source "NtNoteController.java"

# interfaces
.implements Lcom/metamoji/nt/INoNeedUpdatePageThumbnailUndo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtNoteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoNeedCurrentPageUndo"
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

    .line 495
    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController$NoNeedCurrentPageUndo;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtNoteController-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtNoteController$NoNeedCurrentPageUndo;-><init>(Lcom/metamoji/nt/NtNoteController;)V

    return-void
.end method
