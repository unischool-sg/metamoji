.class Lcom/metamoji/nt/NtNoteController$6;
.super Ljava/lang/Object;
.source "NtNoteController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtNoteController;->changeToolModeInConsiderationOfTextMode(Lcom/metamoji/nt/NtDocument$ToolMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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

    .line 2368
    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController$6;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2370
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$6;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2372
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$6;->this$0:Lcom/metamoji/nt/NtNoteController;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/metamoji/nt/INtEditor;->showSetTextUnitLocationView(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtSetTextLocation$NtSetTextLocationListener;)V

    :cond_0
    return-void
.end method
