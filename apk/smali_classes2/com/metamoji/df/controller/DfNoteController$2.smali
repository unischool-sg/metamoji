.class Lcom/metamoji/df/controller/DfNoteController$2;
.super Ljava/lang/Object;
.source "DfNoteController.java"

# interfaces
.implements Lcom/metamoji/df/controller/IControllerAccessHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/df/controller/DfNoteController;->onViewportScrollEnd(Lcom/metamoji/cm/CmContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/df/controller/DfNoteController;

.field final synthetic val$fe:Lcom/metamoji/cm/CmContext;


# direct methods
.method constructor <init>(Lcom/metamoji/df/controller/DfNoteController;Lcom/metamoji/cm/CmContext;)V
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

    .line 171
    iput-object p1, p0, Lcom/metamoji/df/controller/DfNoteController$2;->this$0:Lcom/metamoji/df/controller/DfNoteController;

    iput-object p2, p0, Lcom/metamoji/df/controller/DfNoteController$2;->val$fe:Lcom/metamoji/cm/CmContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Access(Lcom/metamoji/df/controller/DfController;)V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/metamoji/df/controller/DfNoteController$2;->val$fe:Lcom/metamoji/cm/CmContext;

    invoke-virtual {p1, v0}, Lcom/metamoji/df/controller/DfController;->onViewportScrollEnd(Lcom/metamoji/cm/CmContext;)V

    return-void
.end method
