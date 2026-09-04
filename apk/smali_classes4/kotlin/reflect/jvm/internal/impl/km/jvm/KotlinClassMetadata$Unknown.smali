.class public final Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$Unknown;
.super Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata;
.source "KotlinClassMetadata.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Unknown"
.end annotation


# instance fields
.field private flags:I

.field private final lenient:Z

.field private final original:Lkotlin/Metadata;

.field private version:Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;


# direct methods
.method public constructor <init>(Lkotlin/Metadata;Z)V
    .locals 1

    const-string v0, "original"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 334
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$Unknown;->original:Lkotlin/Metadata;

    iput-boolean p2, p0, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$Unknown;->lenient:Z

    .line 338
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;

    invoke-interface {p1}, Lkotlin/Metadata;->mv()[I

    move-result-object v0

    invoke-direct {p2, v0}, Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;-><init>([I)V

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$Unknown;->version:Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;

    .line 343
    invoke-interface {p1}, Lkotlin/Metadata;->xi()I

    move-result p1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$Unknown;->flags:I

    return-void
.end method
