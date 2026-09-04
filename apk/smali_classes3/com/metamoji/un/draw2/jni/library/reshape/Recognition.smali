.class public Lcom/metamoji/un/draw2/jni/library/reshape/Recognition;
.super Ljava/lang/Object;
.source "Recognition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;,
        Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Trait;
    }
.end annotation


# instance fields
.field public final count:I

.field public final data:[F

.field public final traits:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Trait;",
            ">;"
        }
    .end annotation
.end field

.field public final type:Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 14
    invoke-static {}, Lcom/metamoji/un/draw2/jni/DrawUnitComponent;->use()V

    return-void
.end method

.method private constructor <init>(III[F)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {p1}, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;->get(I)Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition;->type:Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;

    .line 59
    invoke-static {p2}, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Trait;->decompose(I)Ljava/util/EnumSet;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition;->traits:Ljava/util/EnumSet;

    .line 60
    iput p3, p0, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition;->count:I

    .line 61
    iput-object p4, p0, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition;->data:[F

    return-void
.end method

.method static native native_recognize([F[F)Lcom/metamoji/un/draw2/jni/library/reshape/Recognition;
.end method
