.class public Lcom/metamoji/mazec/recognizer/HwCandidate;
.super Ljava/lang/Object;
.source "HwCandidate.java"


# instance fields
.field public final score:F

.field public final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;F)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/metamoji/mazec/recognizer/HwCandidate;->text:Ljava/lang/String;

    .line 11
    iput p2, p0, Lcom/metamoji/mazec/recognizer/HwCandidate;->score:F

    return-void
.end method
