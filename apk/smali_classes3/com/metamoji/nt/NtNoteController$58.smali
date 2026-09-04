.class Lcom/metamoji/nt/NtNoteController$58;
.super Ljava/lang/Object;
.source "NtNoteController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtNoteController;->handleSearchText(Lcom/metamoji/cm/CmContext;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtNoteController;

.field final synthetic val$searchContext:Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;)V
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

    .line 7395
    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController$58;->this$0:Lcom/metamoji/nt/NtNoteController;

    iput-object p2, p0, Lcom/metamoji/nt/NtNoteController$58;->val$searchContext:Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 7398
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$58;->val$searchContext:Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->setSearchCancelled(Z)V

    return-void
.end method
