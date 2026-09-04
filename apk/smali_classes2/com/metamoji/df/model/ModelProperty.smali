.class public Lcom/metamoji/df/model/ModelProperty;
.super Ljava/lang/Object;
.source "ModelProperty.java"


# static fields
.field public static final PRELOAD_PREFIX:C = '!'

.field public static final STOP_PROPAGATION:Ljava/lang/String; = "!stopPropergation"

.field public static final TYPE:Ljava/lang/String; = "!type"

.field public static final VERSION:Ljava/lang/String; = "!version"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isPreloadProperty(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v1, 0x21

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method
