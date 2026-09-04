.class public final Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$MultiFileClassPart;
.super Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata;
.source "KotlinClassMetadata.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MultiFileClassPart"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKotlinClassMetadata.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KotlinClassMetadata.kt\nkotlin/metadata/jvm/KotlinClassMetadata$MultiFileClassPart\n+ 2 JvmExceptionUtils.kt\nkotlin/metadata/jvm/internal/JvmExceptionUtilsKt\n*L\n1#1,477:1\n28#2,8:478\n*S KotlinDebug\n*F\n+ 1 KotlinClassMetadata.kt\nkotlin/metadata/jvm/KotlinClassMetadata$MultiFileClassPart\n*L\n319#1:478,8\n*E\n"
.end annotation


# instance fields
.field private facadeClassName:Ljava/lang/String;

.field private flags:I

.field private kmPackage:Lkotlin/reflect/jvm/internal/impl/km/KmPackage;

.field private version:Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;


# direct methods
.method public constructor <init>(Lkotlin/Metadata;Z)V
    .locals 4

    const-string v0, "annotationData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmReadUtils;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmReadUtils;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmReadUtils;->readKmPackage$kotlin_metadata_jvm(Lkotlin/Metadata;)Lkotlin/reflect/jvm/internal/impl/km/KmPackage;

    move-result-object v0

    .line 309
    invoke-interface {p1}, Lkotlin/Metadata;->xs()Ljava/lang/String;

    move-result-object v1

    .line 310
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;

    invoke-interface {p1}, Lkotlin/Metadata;->mv()[I

    move-result-object v3

    invoke-direct {v2, v3}, Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;-><init>([I)V

    .line 311
    invoke-interface {p1}, Lkotlin/Metadata;->xi()I

    move-result p1

    .line 307
    invoke-direct {p0, v0, v1, v2, p1}, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$MultiFileClassPart;-><init>(Lkotlin/reflect/jvm/internal/impl/km/KmPackage;Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;I)V

    xor-int/lit8 p1, p2, 0x1

    .line 313
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$MultiFileClassPart;->setAllowedToWrite$kotlin_metadata_jvm(Z)V

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/km/KmPackage;Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;I)V
    .locals 1

    const-string v0, "kmPackage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "facadeClassName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "version"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 286
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 292
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$MultiFileClassPart;->kmPackage:Lkotlin/reflect/jvm/internal/impl/km/KmPackage;

    .line 296
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$MultiFileClassPart;->facadeClassName:Ljava/lang/String;

    .line 300
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$MultiFileClassPart;->version:Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;

    .line 304
    iput p4, p0, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$MultiFileClassPart;->flags:I

    return-void
.end method
