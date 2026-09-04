.class public interface abstract annotation Landroidx/media3/muxer/WebmConstants$TrackType;
.super Ljava/lang/Object;
.source "WebmConstants.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/muxer/WebmConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "TrackType"
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE_USE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final AUDIO:I = 0x2

.field public static final BUTTONS:I = 0x12

.field public static final COMPLEX:I = 0x3

.field public static final CONTROL:I = 0x20

.field public static final INVALID:I = -0x1

.field public static final LOGO:I = 0x10

.field public static final SUBTITLE:I = 0x11

.field public static final VIDEO:I = 0x1
