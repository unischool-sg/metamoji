.class public final Lcom/metamoji/ctold/style/CtTagStyleFactory;
.super Ljava/lang/Object;
.source "CtTagStyleFactory.java"


# static fields
.field private static final SINGLETON:Lcom/metamoji/ctold/style/CtTagStyleFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/metamoji/ctold/style/CtTagStyleFactory;

    invoke-direct {v0}, Lcom/metamoji/ctold/style/CtTagStyleFactory;-><init>()V

    sput-object v0, Lcom/metamoji/ctold/style/CtTagStyleFactory;->SINGLETON:Lcom/metamoji/ctold/style/CtTagStyleFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static instance()Lcom/metamoji/ctold/style/CtTagStyleFactory;
    .locals 1

    .line 22
    sget-object v0, Lcom/metamoji/ctold/style/CtTagStyleFactory;->SINGLETON:Lcom/metamoji/ctold/style/CtTagStyleFactory;

    return-object v0
.end method


# virtual methods
.method public createColorIndexStyle(I)Lcom/metamoji/ctold/style/CtTagStyle;
    .locals 1

    .line 26
    new-instance v0, Lcom/metamoji/ctold/style/CtColorIndexTagStyle;

    invoke-direct {v0, p1}, Lcom/metamoji/ctold/style/CtColorIndexTagStyle;-><init>(I)V

    return-object v0
.end method

.method public createStyle(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/ctold/style/CtTagStyle;
    .locals 2

    .line 34
    sget-object v0, Lcom/metamoji/ctold/style/CtTagStyleType;->CT_STYLE_UNKNOWN:Lcom/metamoji/ctold/style/CtTagStyleType;

    invoke-virtual {v0}, Lcom/metamoji/ctold/style/CtTagStyleType;->getValue()I

    move-result v0

    const-string v1, "type"

    invoke-interface {p1, v1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/metamoji/ctold/style/CtTagStyleType;->enumOf(I)Lcom/metamoji/ctold/style/CtTagStyleType;

    move-result-object v0

    .line 35
    sget-object v1, Lcom/metamoji/ctold/style/CtTagStyleFactory$1;->$SwitchMap$com$metamoji$ctold$style$CtTagStyleType:[I

    invoke-virtual {v0}, Lcom/metamoji/ctold/style/CtTagStyleType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 39
    :cond_0
    new-instance v0, Lcom/metamoji/ctold/style/CtVoiceTagStyle;

    invoke-direct {v0, p1}, Lcom/metamoji/ctold/style/CtVoiceTagStyle;-><init>(Lcom/metamoji/df/model/IModel;)V

    return-object v0

    .line 37
    :cond_1
    new-instance v0, Lcom/metamoji/ctold/style/CtColorIndexTagStyle;

    invoke-direct {v0, p1}, Lcom/metamoji/ctold/style/CtColorIndexTagStyle;-><init>(Lcom/metamoji/df/model/IModel;)V

    return-object v0
.end method

.method public createVoiceTagStyle()Lcom/metamoji/ctold/style/CtTagStyle;
    .locals 1

    .line 30
    new-instance v0, Lcom/metamoji/ctold/style/CtVoiceTagStyle;

    invoke-direct {v0}, Lcom/metamoji/ctold/style/CtVoiceTagStyle;-><init>()V

    return-object v0
.end method
