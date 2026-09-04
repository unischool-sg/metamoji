.class Lcom/metamoji/nt/NtEditorWindowController$1TextBarVisible;
.super Ljava/lang/Object;
.source "NtEditorWindowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtEditorWindowController;->isVisibleSearchTextBar()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TextBarVisible"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtEditorWindowController;

.field public visible:Z


# direct methods
.method public constructor <init>(Lcom/metamoji/nt/NtEditorWindowController;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 5488
    iput-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController$1TextBarVisible;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5489
    iput-boolean p2, p0, Lcom/metamoji/nt/NtEditorWindowController$1TextBarVisible;->visible:Z

    return-void
.end method
