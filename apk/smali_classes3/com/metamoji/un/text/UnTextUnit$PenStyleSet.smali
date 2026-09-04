.class Lcom/metamoji/un/text/UnTextUnit$PenStyleSet;
.super Ljava/lang/Object;
.source "UnTextUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/text/UnTextUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PenStyleSet"
.end annotation


# instance fields
.field public penStyle:Lcom/metamoji/nt/share/NtPenStyle;

.field public strokeStyle:Lcom/metamoji/mazecclient/stroke/IStrokeStyle;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/un/text/UnTextUnit-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit$PenStyleSet;-><init>()V

    return-void
.end method
