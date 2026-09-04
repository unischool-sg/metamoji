.class public Lcom/metamoji/ui/common/UiFillingLinearLayout$SizeChangedEventArg;
.super Ljava/lang/Object;
.source "UiFillingLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/common/UiFillingLinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SizeChangedEventArg"
.end annotation


# instance fields
.field public h:I

.field public oldh:I

.field public oldw:I

.field public w:I


# direct methods
.method private constructor <init>(IIII)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/metamoji/ui/common/UiFillingLinearLayout$SizeChangedEventArg;->w:I

    .line 25
    iput p2, p0, Lcom/metamoji/ui/common/UiFillingLinearLayout$SizeChangedEventArg;->h:I

    .line 26
    iput p3, p0, Lcom/metamoji/ui/common/UiFillingLinearLayout$SizeChangedEventArg;->oldw:I

    .line 27
    iput p4, p0, Lcom/metamoji/ui/common/UiFillingLinearLayout$SizeChangedEventArg;->oldh:I

    return-void
.end method

.method synthetic constructor <init>(IIIILcom/metamoji/ui/common/UiFillingLinearLayout-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/metamoji/ui/common/UiFillingLinearLayout$SizeChangedEventArg;-><init>(IIII)V

    return-void
.end method
