.class Lcom/metamoji/nt/NtNoteController$56$1;
.super Ljava/lang/Object;
.source "NtNoteController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtNoteController$56;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/nt/NtNoteController$56;

.field final synthetic val$highlightRangeModel:Lcom/metamoji/df/model/IModel;

.field final synthetic val$provider:Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtNoteController$56;Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;Lcom/metamoji/df/model/IModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7230
    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController$56$1;->this$1:Lcom/metamoji/nt/NtNoteController$56;

    iput-object p2, p0, Lcom/metamoji/nt/NtNoteController$56$1;->val$provider:Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;

    iput-object p3, p0, Lcom/metamoji/nt/NtNoteController$56$1;->val$highlightRangeModel:Lcom/metamoji/df/model/IModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 7233
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$56$1;->val$provider:Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;

    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$56$1;->val$highlightRangeModel:Lcom/metamoji/df/model/IModel;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;->setHighlightTextRange(Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchPosition;)V

    return-void
.end method
