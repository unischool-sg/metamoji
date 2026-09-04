.class Lcom/metamoji/nt/NtNoteController$46;
.super Ljava/lang/Object;
.source "NtNoteController.java"

# interfaces
.implements Lcom/metamoji/nt/NtPasteDataUtil$IRootModelCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtNoteController;->pastePageInnrFromModelManager(Lcom/metamoji/df/model/IModelManager;IZZZ)Ljava/lang/String;
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

    .line 5697
    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController$46;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 5700
    const-string v0, "pbpage"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    .line 5701
    const-string v0, "!version"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    return-object p1
.end method
