.class public final Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmClassExtension$Companion;
.super Ljava/lang/Object;
.source "JvmExtensionNodes.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmClassExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmClassExtension$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTYPE()Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmExtensionType;
    .locals 1

    .line 43
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmClassExtension;->access$getTYPE$cp()Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmExtensionType;

    move-result-object v0

    return-object v0
.end method
