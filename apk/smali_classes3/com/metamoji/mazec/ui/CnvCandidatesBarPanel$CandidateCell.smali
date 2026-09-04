.class Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$CandidateCell;
.super Ljava/lang/Object;
.source "CnvCandidatesBarPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CandidateCell"
.end annotation


# instance fields
.field layout:Landroid/text/Layout;

.field left:I

.field right:I

.field word:Lcom/metamoji/mazec/converter/MmjiWord;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$CandidateCell;-><init>()V

    return-void
.end method
