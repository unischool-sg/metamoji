.class public Lcom/metamoji/df/sprite/TypefaceResolver;
.super Ljava/lang/Object;
.source "TypefaceResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/df/sprite/TypefaceResolver$ICustomResolver;
    }
.end annotation


# static fields
.field private static _customResolver:Lcom/metamoji/df/sprite/TypefaceResolver$ICustomResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resolve(Ljava/lang/String;I)Landroid/graphics/Typeface;
    .locals 1

    .line 17
    sget-object v0, Lcom/metamoji/df/sprite/TypefaceResolver;->_customResolver:Lcom/metamoji/df/sprite/TypefaceResolver$ICustomResolver;

    if-eqz v0, :cond_0

    .line 18
    invoke-interface {v0, p0, p1}, Lcom/metamoji/df/sprite/TypefaceResolver$ICustomResolver;->resolveTypeface(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    .line 20
    :cond_0
    invoke-static {p0, p1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public static setCustomResolver(Lcom/metamoji/df/sprite/TypefaceResolver$ICustomResolver;)V
    .locals 0

    .line 13
    sput-object p0, Lcom/metamoji/df/sprite/TypefaceResolver;->_customResolver:Lcom/metamoji/df/sprite/TypefaceResolver$ICustomResolver;

    return-void
.end method
