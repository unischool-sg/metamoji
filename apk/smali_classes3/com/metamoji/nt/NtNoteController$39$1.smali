.class Lcom/metamoji/nt/NtNoteController$39$1;
.super Lcom/metamoji/sd/SdSuccessBlock;
.source "NtNoteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtNoteController$39;->call()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/nt/NtNoteController$39;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtNoteController$39;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 5447
    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController$39$1;->this$1:Lcom/metamoji/nt/NtNoteController$39;

    invoke-direct {p0}, Lcom/metamoji/sd/SdSuccessBlock;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5447
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController$39$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5450
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController$39$1;->getArgument()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 5451
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$39$1;->this$1:Lcom/metamoji/nt/NtNoteController$39;

    iget-object v1, v1, Lcom/metamoji/nt/NtNoteController$39;->val$editor:Lcom/metamoji/cm/mutable/Mutable;

    const-string v2, "editor"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    invoke-virtual {v1, v0}, Lcom/metamoji/cm/mutable/Mutable;->setValue(Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method
