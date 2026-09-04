.class public final Lcom/metamoji/nt/NtPenTemplate$ModelProp;
.super Ljava/lang/Object;
.source "NtPenTemplate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtPenTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ModelProp"
.end annotation


# static fields
.field public static final AVAILABLE:Ljava/lang/String; = "available"

.field public static final AVAILABLEINKTYPES:Ljava/lang/String; = "availableInkTypes"

.field public static final CREDATE:Ljava/lang/String; = "createdDate"

.field public static final DEFAULT:Ljava/lang/String; = "default"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final VERSION:Ljava/lang/String; = "version"


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtPenTemplate;


# direct methods
.method public constructor <init>(Lcom/metamoji/nt/NtPenTemplate;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 20
    iput-object p1, p0, Lcom/metamoji/nt/NtPenTemplate$ModelProp;->this$0:Lcom/metamoji/nt/NtPenTemplate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
