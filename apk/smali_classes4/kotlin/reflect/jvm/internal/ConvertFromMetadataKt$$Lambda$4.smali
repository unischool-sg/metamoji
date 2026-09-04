.class Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field private final arg$0:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt$$Lambda$4;->arg$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt$$Lambda$4;->arg$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt;->accessor$ConvertFromMetadataKt$lambda4(Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/reflect/jvm/internal/types/AbstractKType;

    move-result-object v0

    return-object v0
.end method
