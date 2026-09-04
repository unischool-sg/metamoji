.class public final Lkotlin/reflect/jvm/internal/DescriptorKProperty$Companion;
.super Ljava/lang/Object;
.source "DescriptorKProperty.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/DescriptorKProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0011\u0010\u0004\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lkotlin/reflect/jvm/internal/DescriptorKProperty$Companion;",
        "",
        "<init>",
        "()V",
        "EXTENSION_PROPERTY_DELEGATE",
        "getEXTENSION_PROPERTY_DELEGATE",
        "()Ljava/lang/Object;",
        "kotlin-reflection"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/DescriptorKProperty$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEXTENSION_PROPERTY_DELEGATE()Ljava/lang/Object;
    .locals 1

    .line 212
    invoke-static {}, Lkotlin/reflect/jvm/internal/DescriptorKProperty;->access$getEXTENSION_PROPERTY_DELEGATE$cp()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
