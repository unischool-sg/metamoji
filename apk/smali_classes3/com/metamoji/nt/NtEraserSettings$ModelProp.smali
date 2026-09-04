.class public Lcom/metamoji/nt/NtEraserSettings$ModelProp;
.super Ljava/lang/Object;
.source "NtEraserSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtEraserSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModelProp"
.end annotation


# static fields
.field public static final CURRENTINDEX:Ljava/lang/String; = "currentIndex"

.field public static final LINEWIDTH:Ljava/lang/String; = "lineWidth"


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtEraserSettings;


# direct methods
.method public constructor <init>(Lcom/metamoji/nt/NtEraserSettings;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 18
    iput-object p1, p0, Lcom/metamoji/nt/NtEraserSettings$ModelProp;->this$0:Lcom/metamoji/nt/NtEraserSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
